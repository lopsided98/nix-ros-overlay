
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-mypy, ament-cmake-pytest, ament-cmake-python, ament-copyright, ament-lint-auto, ament-lint-common, launch }:
buildRosPackage {
  pname = "ros-rolling-launch-frontend-py";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_frontend_py-release/archive/release/rolling/launch_frontend_py/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "43a8a658a2cc3c8e8e681b747748e3162fb7fb671fdcc209e918d3d34f65c719";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-mypy ament-cmake-pytest ament-copyright ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Python frontend for writing ROS 2 launch files";
    license = with lib.licenses; [ asl20 ];
  };
}
