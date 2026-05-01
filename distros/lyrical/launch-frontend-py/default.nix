
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-mypy, ament-cmake-pytest, ament-cmake-python, ament-copyright, ament-lint-auto, ament-lint-common, launch }:
buildRosPackage {
  pname = "ros-lyrical-launch-frontend-py";
  version = "0.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_frontend_py-release/archive/release/lyrical/launch_frontend_py/0.1.0-4.tar.gz";
    name = "0.1.0-4.tar.gz";
    sha256 = "1823afad34ef5fef7e7920eeabef8e4a21677b7c88b7b91f8a4de7050c869d66";
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
