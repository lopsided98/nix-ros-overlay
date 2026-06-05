
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, cl-lifecycle-node, cl-ros2-timer, smacc2, std-msgs, xterm }:
buildRosPackage {
  pname = "ros-jazzy-sm-atomic-lifecycle";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_atomic_lifecycle/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "a1b3d337f6d94fb63665bac4501bad6dc4431947f0e67ada72842605a354fac5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-auto cl-lifecycle-node cl-ros2-timer smacc2 std-msgs xterm ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sm_atomic_lifecycle package";
    license = with lib.licenses; [ asl20 ];
  };
}
