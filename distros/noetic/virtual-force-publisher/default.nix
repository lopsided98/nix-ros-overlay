
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, kdl-parser, sensor-msgs, tf-conversions, urdf }:
buildRosPackage {
  pname = "ros-noetic-virtual-force-publisher";
  version = "2.2.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/virtual_force_publisher/2.2.14-1.tar.gz";
    name = "2.2.14-1.tar.gz";
    sha256 = "6555a25ccab30c8e934568ac73b96216caabd1269551d123b751717ebec7117c";
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
