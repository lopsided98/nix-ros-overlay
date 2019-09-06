
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, sensor-msgs, catkin, pythonPackages, nav-msgs, actionlib, rospy, diagnostic-msgs, tf, arbotix-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-arbotix-python";
  version = "0.10.0";

  src = fetchurl {
    url = "https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/melodic/arbotix_python/0.10.0-0.tar.gz";
    name = "0.10.0-0.tar.gz";
    sha256 = "cef79742fd412330d7bf8982775ca8aac8ddc936b1ebe0744ac07a47375a5469";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.pyserial control-msgs sensor-msgs nav-msgs actionlib rospy diagnostic-msgs tf arbotix-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bindings and low-level controllers for ArbotiX-powered robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
