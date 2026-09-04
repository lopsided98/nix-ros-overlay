
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-olive-interfaces";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/olive-robotics/olive-ros2-interfaces-release/archive/release/jazzy/olive_interfaces/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "29c12837cdd178b61664bee66303fca87282aa2532048163b973396a7c5e1252";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake geometry-msgs rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake geometry-msgs ];

  meta = {
    description = "This package provides all olive custom interfaces";
    license = with lib.licenses; [ asl20 ];
  };
}
