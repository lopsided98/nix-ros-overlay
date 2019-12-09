
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rqt-py-common, pythonPackages, catkin, rqt-gui-py, rosservice }:
buildRosPackage {
  pname = "ros-melodic-rqt-service-caller";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_service_caller-release/archive/release/melodic/rqt_service_caller/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "574aa580c11737fc800b058f7cac63a7a7b75d144525d04e89c538716418c1b3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui rqt-py-common pythonPackages.rospkg rqt-gui-py rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_service_caller provides a GUI plugin for calling arbitrary services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
