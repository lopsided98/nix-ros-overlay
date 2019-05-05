
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, perception, catkin, desktop, simulators, urdf-tutorial }:
buildRosPackage {
  pname = "ros-lunar-desktop-full";
  version = "1.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/metapackages-release/archive/release/lunar/desktop_full/1.3.2-0.tar.gz;
    sha256 = "091c2859b23609cb3041d4aecf4323c8ee5d7fdabf9c6c8489cf55322eaddbb9";
  };

  propagatedBuildInputs = [ desktop urdf-tutorial perception simulators ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
