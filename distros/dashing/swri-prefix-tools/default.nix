
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pythonPackages }:
buildRosPackage {
  pname = "ros-dashing-swri-prefix-tools";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_prefix_tools/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "2715c45d3ea6b62aca30e8e618d0dc21e1d251da502041063bd7c24f1b7a7294";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ pythonPackages.psutil ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Contains scripts that are useful as prefix commands for nodes
    started by roslaunch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
