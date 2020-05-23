
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-noetic-open-karto";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/open_karto-release/archive/release/noetic/open_karto/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "30b93197b5cd2a50f5e82a04a19f6ba3b36e045bd41fb23277c47bcbd6952afd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkinized ROS packaging of the OpenKarto library'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
