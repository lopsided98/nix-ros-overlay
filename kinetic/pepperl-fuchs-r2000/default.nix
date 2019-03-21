
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, sensor-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pepperl-fuchs-r2000";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/dillenberger/pepperl_fuchs-release/archive/release/kinetic/pepperl_fuchs_r2000/0.1.3-0.tar.gz;
    sha256 = "9c1393e1aaceeba29b9c28f36cc1fe623397e9aa32ef82de1eefb0103e530680";
  };

  propagatedBuildInputs = [ std-msgs sensor-msgs roscpp ];
  nativeBuildInputs = [ std-msgs sensor-msgs roscpp catkin ];

  meta = {
    description = ''The Pepperl+Fuchs R2000 laser range finder driver package'';
    #license = lib.licenses.BSD;
  };
}
