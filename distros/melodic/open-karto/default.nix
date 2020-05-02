
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-melodic-open-karto";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/open_karto-release/archive/release/melodic/open_karto/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "f6a11770361d07634e263ed217b7b5f619cd2a4b0c5e1080f0ec9ff726a57d75";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkinized ROS packaging of the OpenKarto library'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
