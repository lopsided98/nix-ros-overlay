
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosout";
  version = "1.14.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosout/1.14.13-1.tar.gz";
    name = "1.14.13-1.tar.gz";
    sha256 = "44b692ed3292419961cf7a78d8df3bd8b5e0958e620bebd778e0249d0a9a230f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp rosgraph-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''System-wide logging mechanism for messages sent to the /rosout topic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
