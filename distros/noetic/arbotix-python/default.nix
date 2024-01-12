
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, arbotix-msgs, catkin, control-msgs, diagnostic-msgs, geometry-msgs, nav-msgs, python3Packages, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-arbotix-python";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/noetic/arbotix_python/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "36e5ba1ab702e2d730e6b496bc9ff556f4222e45369ee91d3977c0f77fb39a82";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib arbotix-msgs control-msgs diagnostic-msgs geometry-msgs nav-msgs python3Packages.pyserial rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bindings and low-level controllers for ArbotiX-powered robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
