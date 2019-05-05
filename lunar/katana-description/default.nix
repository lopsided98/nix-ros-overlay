
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, convex-decomposition, urdf, ivcon, transmission-interface }:
buildRosPackage {
  pname = "ros-lunar-katana-description";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/katana_description/1.1.2-0.tar.gz;
    sha256 = "a994042ba0ffc777acec24b01e908ba39183b84daa4362dbfbf01596ad619de3";
  };

  buildInputs = [ convex-decomposition urdf transmission-interface ivcon ];
  propagatedBuildInputs = [ urdf transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains an URDF description of the Katana arm and all supporting mesh files.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
