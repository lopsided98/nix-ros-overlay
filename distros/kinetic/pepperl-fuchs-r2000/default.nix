
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pepperl-fuchs-r2000";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/dillenberger/pepperl_fuchs-release/archive/release/kinetic/pepperl_fuchs_r2000/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "9c1393e1aaceeba29b9c28f36cc1fe623397e9aa32ef82de1eefb0103e530680";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Pepperl+Fuchs R2000 laser range finder driver package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
