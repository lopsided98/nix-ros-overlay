
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosservice, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-melodic-rqt-service-caller";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_service_caller-release/archive/release/melodic/rqt_service_caller/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "574aa580c11737fc800b058f7cac63a7a7b75d144525d04e89c538716418c1b3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pythonPackages.rospkg rosservice rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_service_caller provides a GUI plugin for calling arbitrary services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
