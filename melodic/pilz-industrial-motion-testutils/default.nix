
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-msgs, eigen-conversions, pilz-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion-testutils";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_industrial_motion_testutils/0.4.2-0.tar.gz;
    sha256 = "7f305223df193deadaf821302755cfbc4388145691b85e3d817f47175d7e8012";
  };

  buildInputs = [ moveit-msgs eigen-conversions pilz-msgs moveit-core ];
  propagatedBuildInputs = [ moveit-msgs pilz-msgs moveit-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    #license = lib.licenses.Apache 2.0;
  };
}
