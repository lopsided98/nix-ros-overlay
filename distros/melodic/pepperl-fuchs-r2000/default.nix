
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pepperl-fuchs-r2000";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/dillenberger/pepperl_fuchs-release/archive/release/melodic/pepperl_fuchs_r2000/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "833c1e411a45ec3640a3b9711241ef46c5ba36ceaa0ee0496d183f4fbb246c1f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Pepperl+Fuchs R2000 laser range finder driver package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
