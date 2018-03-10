FROM continuumio/anaconda3

RUN conda install -y --quiet \
    numpy scipy scikit-learn matplotlib pandas pillow graphviz python-graphviz && \
    pip install mglearn && \
    mkdir /opt/notebooks

EXPOSE 8888
CMD ["/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]
