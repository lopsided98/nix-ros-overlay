
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, schunk-svh-description }:
buildRosPackage {
  pname = "ros-melodic-schunk-svh-simulation";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/schunk_svh_ros_driver-release/archive/release/melodic/schunk_svh_simulation/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "4b6ef368ee0629ee9bc7ef74455fb9a9f1c12d85cc3c0540ff6e2ad2f7858665";
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
