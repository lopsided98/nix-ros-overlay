
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, spdlog }:
buildRosPackage {
  pname = "ros-eloquent-spdlog-vendor";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/spdlog_vendor-release/archive/release/eloquent/spdlog_vendor/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "573aad7427c6e442edc08ef2c0dc8c6a3e7e3842727a64196b97d77296738c70";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ spdlog ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around spdlog, providing nothing but a dependency on spdlog, on some systems.
    On others, it provides an ExternalProject build of spdlog.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
