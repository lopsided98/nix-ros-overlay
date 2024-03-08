
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-service-caller";
  version = "1.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_service_caller-release/archive/release/rolling/rqt_service_caller/1.2.1-2.tar.gz";
    name = "1.2.1-2.tar.gz";
    sha256 = "5a237ed4d5bddd41e255026574a529023c5c9ac18760c4ba4903a8e44d3aa4f6";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_service_caller provides a GUI plugin for calling arbitrary services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
