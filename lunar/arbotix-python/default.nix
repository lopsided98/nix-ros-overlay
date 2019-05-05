
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, sensor-msgs, catkin, pythonPackages, nav-msgs, actionlib, rospy, diagnostic-msgs, tf, arbotix-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-arbotix-python";
  version = "0.10.0";

  src = fetchurl {
    url = https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/lunar/arbotix_python/0.10.0-0.tar.gz;
    sha256 = "818b93466af250a2c10108f4392906fecb273848a5e0967f84429992db3af25f";
  };

  propagatedBuildInputs = [ pythonPackages.pyserial control-msgs sensor-msgs nav-msgs actionlib rospy diagnostic-msgs tf arbotix-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bindings and low-level controllers for ArbotiX-powered robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
