
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-autoware-adapi-version-msgs";
  version = "1.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_adapi_msgs-release/archive/release/rolling/autoware_adapi_version_msgs/1.9.0-2.tar.gz";
    name = "1.9.0-2.tar.gz";
    sha256 = "44088e08ceb76e292e00251f349b638e85cfd3f42b2383c8df7f111e42546962";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The Autoware AD API version interfaces";
    license = with lib.licenses; [ asl20 ];
  };
}
