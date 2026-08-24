{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  nix-update-script,
  wheel,
  setuptools,
  gitpython,
  levenshtein,
  requests,
  rospkg,
  scancode-toolkit,
  bumpver,
  flake8,
  isort,
  mypy,
  pycodestyle,
  pytest,
  pytest-cov,
}:

buildPythonPackage (finalAttrs: {
  pname = "ros-license-toolkit";
  version = "2.0.3";
  pyproject = true;
  __structuredAttrs = true;

  src = fetchFromGitHub {
    owner = "boschresearch";
    repo = "ros_license_toolkit";
    tag = finalAttrs.version;
    hash = "sha256-eY8zJRrjdnJJc4nIuNTTOzBHzXCfg10Ef1ZEAR8N94M=";
  };

  postPatch = ''
    substituteInPlace pyproject.toml --replace-fail "python-Levenshtein" "levenshtein"
  '';

  build-system = [
    setuptools
    wheel
  ];

  dependencies = [
    gitpython
    levenshtein
    requests
    rospkg
    scancode-toolkit
  ];

  optional-dependencies = {
    dev = [
      bumpver
      flake8
      isort
      mypy
      pycodestyle
      pytest
      pytest-cov
    ];
  };

  pythonImportsCheck = [
    "ros_license_toolkit"
  ];

  passthru.updateScript = nix-update-script { };

  meta = {
    description = "Checks ROS packages for correct license declaration";
    homepage = "https://github.com/boschresearch/ros_license_toolkit";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ wentasah ];
    mainProgram = "ros_license_toolkit";
  };
})
