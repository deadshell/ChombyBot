FROM       python
RUN        pip install pipenv
COPY       . /src
WORKDIR    /src
RUN        pipenv install --deploy --dev
ENV        SHELL=/bin/bash
ENTRYPOINT ["pipenv", "run"]
CMD        ["python"]