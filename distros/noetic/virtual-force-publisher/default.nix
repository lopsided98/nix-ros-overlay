
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, kdl-parser, sensor-msgs, tf-conversions, urdf }:
buildRosPackage {
  pname = "ros-noetic-virtual-force-publisher";
  version = "2.2.11-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/virtual_force_publisher/2.2.11-2.tar.gz";
    name = "2.2.11-2.tar.gz";
    sha256 = "2525226fd6c507c40f78ca2fcb145b28fd8f83c0090e4afea891408d3d3aa396";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs kdl-parser sensor-msgs tf-conversions urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''publish end effector's force, which is estmated from joint torque value'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
