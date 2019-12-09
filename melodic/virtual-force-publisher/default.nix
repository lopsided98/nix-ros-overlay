
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, urdf, catkin, tf-conversions, kdl-parser }:
buildRosPackage {
  pname = "ros-melodic-virtual-force-publisher";
  version = "2.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/melodic/virtual_force_publisher/2.2.10-0.tar.gz";
    name = "2.2.10-0.tar.gz";
    sha256 = "12b7dd32a18a6b444d59d0dacd15781a6ea157a23924c04dc1aa7ca176de8a20";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs urdf tf-conversions kdl-parser ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs urdf tf-conversions kdl-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''publish end effector's force, which is estmated from joint torque value'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
