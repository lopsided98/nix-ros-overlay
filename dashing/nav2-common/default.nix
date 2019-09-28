
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-core }:
buildRosPackage {
  pname = "ros-dashing-nav2-common";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_common/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "748440a2359c2c5c8690fd6a64a07690baf01718e242f4729ed10560be9f9e2c";
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
