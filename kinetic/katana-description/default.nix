
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, convex-decomposition, urdf, ivcon, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-katana-description";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_description/1.1.2-0.tar.gz;
    sha256 = "94179ff07e5fb626522d3511665d24fa4254b4068be489dabfc410d97a75a771";
  };

  propagatedBuildInputs = [ urdf transmission-interface ];
  nativeBuildInputs = [ convex-decomposition urdf ivcon catkin transmission-interface ];

  meta = {
    description = ''This package contains an URDF description of the Katana arm and all supporting mesh files.'';
    #license = lib.licenses.GPL;
  };
}
