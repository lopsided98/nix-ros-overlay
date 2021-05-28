
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-galactic-rqt-service-caller";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_service_caller-release/archive/release/galactic/rqt_service_caller/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "bf7af8383ab77847fe97d435cdc97b15a79e459eddc052d25e335c6a18d2500f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_service_caller provides a GUI plugin for calling arbitrary services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
