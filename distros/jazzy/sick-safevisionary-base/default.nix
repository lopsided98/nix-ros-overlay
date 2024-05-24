
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-sick-safevisionary-base";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_base-release/archive/release/jazzy/sick_safevisionary_base/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "ed614b4caaf5a3201907a363280c6609325fcde12ff1017e8e9d7f09eb69f6d7";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The package provides the basic hardware interface to the SICK Safevisionary sensor";
    license = with lib.licenses; [ asl20 ];
  };
}
