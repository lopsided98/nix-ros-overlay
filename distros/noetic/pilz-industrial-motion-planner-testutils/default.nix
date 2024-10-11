
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-commander, moveit-core, moveit-msgs, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-pilz-industrial-motion-planner-testutils";
  version = "1.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/pilz_industrial_motion_planner_testutils/1.1.16-1.tar.gz";
    name = "1.1.16-1.tar.gz";
    sha256 = "2fffa4181a5663245bfb5a417720ac32b7014a6a162048b814a128f70767cdd0";
  };

  buildType = "catkin";
  buildInputs = [ catkin tf2-eigen ];
  propagatedBuildInputs = [ moveit-commander moveit-core moveit-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Helper scripts and functionality to test industrial motion generation";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
