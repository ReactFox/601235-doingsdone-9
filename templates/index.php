<h2 class="content__main-heading">Список задач</h2>

<form class="search-form" action="index.php" method="post" autocomplete="off">
    <input class="search-form__input" type="text" name="" value="" placeholder="Поиск по задачам">

    <input class="search-form__submit" type="submit" name="" value="Искать">
</form>

<div class="tasks-controls">
    <nav class="tasks-switch">
        <a href="/" class="tasks-switch__item tasks-switch__item--active">Все задачи</a>
        <a href="/" class="tasks-switch__item">Повестка дня</a>
        <a href="/" class="tasks-switch__item">Завтра</a>
        <a href="/" class="tasks-switch__item">Просроченные</a>
    </nav>

    <label class="checkbox">
        <!--добавить сюда аттрибут "checked", если переменная $show_complete_tasks равна единице-->
        <input class="checkbox__input visually-hidden show_completed"
               type="checkbox" <?= ($show_complete_tasks === 1) ? "checked" : "" ?>>
        <span class="checkbox__text">Показывать выполненные</span>
    </label>
</div>

<table class="tasks">
    <?php foreach ($tasks as $key => $task): ?>
        <!--  покажет(пока рандомно) не выполненые  задачи если show_complete_tasks==0  -->
        <?php if ($show_complete_tasks === 0 && $task['done'] === '0'): ?>
<!--            Функция для получения кол-ва задач в категории проекты-->
            <tr class="tasks__item task <?= get_diff_time($task['date_of_completion']) ?> <?= ($task['done'] === '1') ? "task--completed" : "" ?>">
                <td class="task__select">
                    <label class="checkbox task__checkbox">
                        <input class="checkbox__input visually-hidden task__checkbox" type="checkbox"
                               value="1">
                        <span class="checkbox__text"><?= htmlspecialchars($task['task']) ?></span>
                    </label>
                </td>

                <td class="task__file">
                    <a class="download-link" href="#"><?= htmlspecialchars("Home.psd") ?></a>
                </td>

                <td class="task__date"><?= htmlspecialchars($task['date_of_completion'])?></td>
            </tr>
        <?php endif; ?>

        <!--  покажет(пока рандомно) выполненые  задачи если show_complete_tasks==1
         и добавит в разметку класс task--completed  этот кусок кода я добавил, чтобы проверить
         отработает этот класс или нет-->
        <?php if ($show_complete_tasks === 1 && $task['done'] === '1'): ?>
            <tr class="tasks__item task <?= ($task['done'] === '1') ? "task--completed" : "" ?>">
                <td class="task__select">
                    <label class="checkbox task__checkbox">
                        <input class="checkbox__input visually-hidden task__checkbox" type="checkbox"
                               value="1">
                        <span class="checkbox__text"><?= htmlspecialchars($task['task']) ?></span>
                    </label>
                </td>

                <td class="task__file">
                    <a class="download-link" href="#"><?= htmlspecialchars("Home.psd") ?></a>
                </td>

                <td class="task__date"><?= htmlspecialchars($task['date_of_completion']) ?></td>
            </tr>
        <?php endif; ?>


        <!--показывать следующий тег <tr/>, если переменная $show_complete_tasks равна единице-->
        <!-- временно убрал не знаю нужен он пока или нет  -->
    <?php endforeach; ?>
</table>