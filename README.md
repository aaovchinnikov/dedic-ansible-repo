# decic-ansible-repo

## Использование

1. Устанавливаем pip:

    ```bash
    cd
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python3 get-pip.py
    ```

2. Клонируем репозиторий.

3. Подготовка окружения:

    ```bash
    cd ansible-repo/
    ./setup_venv.sh
    ```

    Скрипт `./setup_venv.sh` создает виртуальное окружение Python в каталоге `venv`. Созданное окружение содержит все необходимые зависимости для работы с репозиторием. Перед вызовом утилит ansible необходимо активировать это окружение (делается каждый раз при создании нового сеанса консоли):

    ```bash
    cd ansible-repo/
    . venv/bin/activate
    ```

    Деактивация окружения производится с помощью следующей команды:

    ```bash
    deactivate
    ```

    Проверить, находитесь ли вы в виртуальном окружении, можно с помощью следующей команды (если результат пустой, то виртуальное окружение отключено):

    ```bash
    echo $VIRTUAL_ENV
    ```

4. Переходим в каталог `playbooks`:

    ```bash
    cd ansible-repo/playbooks
    ```

5. Создаем файл с паролем Ansible-Vault (этот пароль по соображениям безопасности отсутствует в репозитории):

    ```bash
    touch .vault_pass.txt
    vim .vault_pass.txt
    ```

6. Из папки `playbooks` запускаем плейбук с инвентори

    ```bash
    ansible-playbook my_playbook.yml -i ../inventories/static.yml
    ```
