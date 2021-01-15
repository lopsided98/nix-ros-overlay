
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, thormang3-action-editor, thormang3-offset-tuner-server }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-tools";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-Tools-release/archive/release/kinetic/thormang3_tools/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "55de89f8bbd4038866d2466cd72c1fcd7e8cfb0fe7fa30ec5586c1b88c6513a6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ thormang3-action-editor thormang3-offset-tuner-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the thormang3_tools (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
