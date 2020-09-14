
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-melodic-open-karto";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/open_karto-release/archive/release/melodic/open_karto/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "1e6c4eb4da8553c8f14b62ec29b1fa0ec2eaf88edce2b75c668ebda566e6e27c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkinized ROS packaging of the OpenKarto library'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
