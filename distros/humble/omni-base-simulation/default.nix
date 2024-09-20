
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, omni-base-gazebo }:
buildRosPackage {
  pname = "ros-humble-omni-base-simulation";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_simulation-release/archive/release/humble/omni_base_simulation/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "6e30ea7d1ffd5885dab57f8aaae92add387c3135a0980914de4cda7bce18a350";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ omni-base-gazebo ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_simulation package";
    license = with lib.licenses; [ asl20 ];
  };
}
