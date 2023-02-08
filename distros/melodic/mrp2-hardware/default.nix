
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, dynamic-reconfigure, hardware-interface, libusb1, nav-msgs, realtime-tools, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, tf, urdf }:
buildRosPackage {
  pname = "ros-melodic-mrp2-hardware";
  version = "0.2.6-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "milvusrobotics";
        repo = "mrp2_robot-release";
        rev = "release/melodic/mrp2_hardware/0.2.6-1";
        sha256 = "sha256-of5GjGHLn4YySAF/5enI2VJKqXxOFf0L0xQDBVvmeZc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface controller-manager dynamic-reconfigure hardware-interface libusb1 nav-msgs realtime-tools roscpp rospy sensor-msgs std-msgs std-srvs tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Hardware files to communicate with MRP2 base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
