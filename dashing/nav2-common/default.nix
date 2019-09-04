
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-core }:
buildRosPackage {
  pname = "ros-dashing-nav2-common";
  version = "0.2.3-r1";

  src = fetchurl {
    url = https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_common/0.2.3-1.tar.gz;
    sha256 = "f2ad8006b5478ed7526b026212092e45af695548930992d2347458ff5ffc615f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''Common support functionality used throughout the navigation 2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
