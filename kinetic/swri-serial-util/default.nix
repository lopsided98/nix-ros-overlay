
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, boost }:
buildRosPackage {
  pname = "ros-kinetic-swri-serial-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_serial_util/2.8.0-0.tar.gz;
    sha256 = "44e2a8cdd8fed6c2393587bbe59a312aa13cb39588be471a92a1afd92d78ed12";
  };

  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin boost ];

  meta = {
    description = ''swri_serial_util'';
    #license = lib.licenses.BSD;
  };
}
