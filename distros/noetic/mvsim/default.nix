
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-generation, message-runtime, mrpt-bridge, mrpt2, nav-msgs, roscpp, sensor-msgs, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-mvsim";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ual-arm-ros-pkg-release/mvsim-release/archive/release/noetic/mvsim/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "e26d38a2565cb8f3cc9d77bfaa01b9557e7105c52f360a294d16aef40bc31c64";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure message-generation message-runtime mrpt-bridge mrpt2 nav-msgs roscpp sensor-msgs std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node for the &quot;multivehicle simulator&quot; framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
