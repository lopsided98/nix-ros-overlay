
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, spdlog }:
buildRosPackage {
  pname = "ros-jazzy-spdlog-vendor";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/spdlog_vendor-release/archive/release/jazzy/spdlog_vendor/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "3bafbdfe315b9d3128e46af997bac1a8369994327950f60f487ac1fd75d102cf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ spdlog ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Wrapper around spdlog, providing nothing but a dependency on spdlog, on some systems.
    On others, it provides an ExternalProject build of spdlog.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
