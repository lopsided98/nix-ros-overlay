
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, qt5 }:
buildRosPackage {
  pname = "ros-jazzy-turtle-nest";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtle_nest-release/archive/release/jazzy/turtle_nest/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "441020e2abfaaa7ba7b07e624fe212d4b41cbe007f043fbcb0898fcc22f0ae63";
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
