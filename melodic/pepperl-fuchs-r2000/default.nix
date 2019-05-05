
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, sensor-msgs, roscpp, catkin }:
buildRosPackage {
  pname = "ros-melodic-pepperl-fuchs-r2000";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/dillenberger/pepperl_fuchs-release/archive/release/melodic/pepperl_fuchs_r2000/0.1.3-0.tar.gz;
    sha256 = "833c1e411a45ec3640a3b9711241ef46c5ba36ceaa0ee0496d183f4fbb246c1f";
  };

  buildInputs = [ std-msgs sensor-msgs roscpp ];
  propagatedBuildInputs = [ std-msgs sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Pepperl+Fuchs R2000 laser range finder driver package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
