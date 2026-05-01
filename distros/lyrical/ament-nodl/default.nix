
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-ament-nodl";
  version = "0.1.0-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_nodl-release/archive/release/lyrical/ament_nodl/0.1.0-8.tar.gz";
    name = "0.1.0-8.tar.gz";
    sha256 = "1f94666c75e94e7bdb45ddccb1d1948332114b2439941fd4e10b52262fda7cba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Ament extension for exporting NoDL .xml files";
    license = with lib.licenses; [ lgpl3Only ];
  };
}
