
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, qt5 }:
buildRosPackage {
  pname = "ros-rolling-turtle-nest";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtle_nest-release/archive/release/rolling/turtle_nest/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "a26e87f93227dca887688ef2867165f116bd32175fbde76651eb47a8e8f6b008";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 Package Creator";
    license = with lib.licenses; [ asl20 ];
  };
}
