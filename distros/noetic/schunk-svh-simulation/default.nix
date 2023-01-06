
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, schunk-svh-description }:
buildRosPackage {
  pname = "ros-noetic-schunk-svh-simulation";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/schunk_svh_ros_driver-release/archive/release/noetic/schunk_svh_simulation/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "a53eedb734132bca34bce7138bc5957a52dfc9ded76b592c498e11180366731a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ schunk-svh-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Gazebo-based simulation environment for the Schunk SVH'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
