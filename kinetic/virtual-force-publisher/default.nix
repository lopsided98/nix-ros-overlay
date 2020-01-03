
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, kdl-parser, sensor-msgs, tf-conversions, urdf }:
buildRosPackage {
  pname = "ros-kinetic-virtual-force-publisher";
  version = "2.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kinetic/virtual_force_publisher/2.2.10-0.tar.gz";
    name = "2.2.10-0.tar.gz";
    sha256 = "768ab9687c3a429a5c82a6aa7984f4a37c4510e851deb91f61f6f669cd08f6a2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs kdl-parser sensor-msgs tf-conversions urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''publish end effector's force, which is estmated from joint torque value'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
