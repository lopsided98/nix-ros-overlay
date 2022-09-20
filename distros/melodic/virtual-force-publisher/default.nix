
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, kdl-parser, sensor-msgs, tf-conversions, urdf }:
buildRosPackage {
  pname = "ros-melodic-virtual-force-publisher";
  version = "2.2.12-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/melodic/virtual_force_publisher/2.2.12-1.tar.gz";
    name = "2.2.12-1.tar.gz";
    sha256 = "245a450e7927f034a1f0bf7529ba983cb8bc1003f3c41771720afc25a6cc9161";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs kdl-parser sensor-msgs tf-conversions urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''publish end effector's force, which is estmated from joint torque value'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
