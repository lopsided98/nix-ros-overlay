
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-kilted-rqt-service-caller";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_service_caller-release/archive/release/kilted/rqt_service_caller/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "afac12d54e85b66ab68f3cccff4dc4a52022a8fe2be59d9ae2b03a4990c32ef5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_service_caller provides a GUI plugin for calling arbitrary services.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
