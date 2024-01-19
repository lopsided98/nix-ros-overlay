
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, console-bridge, cpp-common, rosconsole }:
buildRosPackage {
  pname = "ros-noetic-rosconsole-bridge";
  version = "0.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosconsole_bridge-release/archive/release/noetic/rosconsole_bridge/0.5.4-1.tar.gz";
    name = "0.5.4-1.tar.gz";
    sha256 = "5531266ba03ccb439a2191abdfa26ef735e7c58e647c4fc44f880b31a5d921ae";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ console-bridge cpp-common rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosconsole_bridge is a package used in conjunction with console_bridge and rosconsole for connecting console_bridge-based logging to rosconsole-based logging.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
