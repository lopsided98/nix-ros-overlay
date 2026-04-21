{
  buildPythonPackage,
  fetchFromGitHub,
  fetchpatch2,
  lib,
  looseversion,
  python-dateutil,
  pyyaml,
  setuptools,
}:

buildPythonPackage rec {
  pname = "vcstools";
  version = "0.1.42";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "vcstools";
    repo = "vcstools";
    rev = version;
    hash = "sha256-ZvA6+aMzE/+RDJtlABiHILhiM7fNW1ZucGRHZcwraRU=";
  };

  patches = [
    # fix python 3.12 compatibility: don't import imp
    (fetchpatch2 {
      url = "https://github.com/meyerj/vcstools/commit/1d32c81af6768345b413de364c9bc526d6309f5d.patch?full_index=1";
      hash = "sha256-564/L4sHGImt/iclawnX1hqAwees1vpBX/PBRtvs7Ng=";
    })
    # fix syntax warning
    (fetchpatch2 {
      url = "https://github.com/meyerj/vcstools/commit/29236587452e02b618ef4b7467b0e45768a422e6.patch?full_index=1";
      hash = "sha256-Tz38gsUOCKOvEDVrHY0rAMyo4T6/AcrdpV8BSD8rtM8=";
    })
    # fix python 3.12 compatibility: don't import distutils
    (fetchpatch2 {
      url = "https://github.com/nim65s/vcstools/commit/b940aacc4bcf96892b5d75ae6e58dc9bba5fff60.patch?full_index=1";
      hash = "sha256-6FJPUaKZrYlETL2gB5HsIM4lzvwmwrZqicFRhK1FEgI=";
    })
  ];

  build-system = [ setuptools ];

  dependencies = [
    looseversion
    python-dateutil
    pyyaml
  ];

  pythonImportsCheck = [ "vcstools" ];

  meta = {
    description = "Python library for interacting with various VCS systems";
    homepage = "https://github.com/vcstools/vcstools";
    license = lib.licenses.bsd3;
    maintainers = with lib.maintainers; [ nim65s ];
  };
}
