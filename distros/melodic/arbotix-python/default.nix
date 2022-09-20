
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, arbotix-msgs, catkin, control-msgs, diagnostic-msgs, geometry-msgs, nav-msgs, pythonPackages, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-arbotix-python";
  version = "0.10.0";

  src = fetchurl {
    url = "https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/melodic/arbotix_python/0.10.0-0.tar.gz";
    name = "0.10.0-0.tar.gz";
    sha256 = "cef79742fd412330d7bf8982775ca8aac8ddc936b1ebe0744ac07a47375a5469";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib arbotix-msgs control-msgs diagnostic-msgs geometry-msgs nav-msgs pythonPackages.pyserial rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bindings and low-level controllers for ArbotiX-powered robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
