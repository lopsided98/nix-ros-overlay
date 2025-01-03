
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, kdl-parser, sensor-msgs, tf-conversions, urdf }:
buildRosPackage {
  pname = "ros-noetic-virtual-force-publisher";
  version = "2.2.15-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/virtual_force_publisher/2.2.15-4.tar.gz";
    name = "2.2.15-4.tar.gz";
    sha256 = "c8d3d9c5a1790c01221b6cd8a050541747e1e491c28bc2be82e0ca8a0bd383fd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs kdl-parser sensor-msgs tf-conversions urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "publish end effector's force, which is estmated from joint torque value";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
