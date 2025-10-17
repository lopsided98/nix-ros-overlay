
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-mypy, ament-cmake-pytest, ament-cmake-python, ament-copyright, ament-lint-auto, ament-lint-common, launch }:
buildRosPackage {
  pname = "ros-jazzy-launch-frontend-py";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_frontend_py-release/archive/release/jazzy/launch_frontend_py/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "ddc52319b5e794ce9edb26e59f9b145a50a44973b5fa42b251bfb5b13e64559c";
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
