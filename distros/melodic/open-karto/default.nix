
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-melodic-open-karto";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/open_karto-release/archive/release/melodic/open_karto/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "9441edebe6265db0419ca9fca4e85578413ff700953145d4d22fe8d2202a0c92";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkinized ROS packaging of the OpenKarto library'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
