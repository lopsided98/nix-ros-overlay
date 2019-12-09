
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, arbotix-msgs, sensor-msgs, diagnostic-msgs, geometry-msgs, tf, actionlib, catkin, pythonPackages, rospy, nav-msgs, control-msgs }:
buildRosPackage {
  pname = "ros-kinetic-arbotix-python";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/kinetic/arbotix_python/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "663f71496a238a66a7d81542975f8c434b19ba0c472815b8db63404d5226f5b6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ arbotix-msgs sensor-msgs diagnostic-msgs geometry-msgs tf actionlib pythonPackages.pyserial rospy nav-msgs control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bindings and low-level controllers for ArbotiX-powered robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
