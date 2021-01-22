
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, convex-decomposition, ivcon, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-kinetic-katana-description";
  version = "1.1.2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_description/1.1.2-0.tar.gz";
    name = "1.1.2-0.tar.gz";
    sha256 = "94179ff07e5fb626522d3511665d24fa4254b4068be489dabfc410d97a75a771";
  };

  buildType = "catkin";
  buildInputs = [ convex-decomposition ivcon ];
  propagatedBuildInputs = [ transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains an URDF description of the Katana arm and all supporting mesh files.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
