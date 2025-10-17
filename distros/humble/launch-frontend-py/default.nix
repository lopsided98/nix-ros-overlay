
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-mypy, ament-cmake-pytest, ament-cmake-python, ament-copyright, ament-lint-auto, ament-lint-common, launch }:
buildRosPackage {
  pname = "ros-humble-launch-frontend-py";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_frontend_py-release/archive/release/humble/launch_frontend_py/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "5b76cb07fe2b087058f9f802acd2d3dddcaeabe9da7c7de4f021829421384628";
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
